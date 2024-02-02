import axios from 'axios';

export class API {
  constructor() {}

  async post(url: string, data: any): Promise<any> {
    const response = await axios.post(url, data, {
      headers: {
        'Content-Type': 'application/json',
      },
    });

    return response;
  }
}